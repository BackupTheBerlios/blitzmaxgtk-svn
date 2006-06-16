Strict
' "Author: Jonas Cleve"
' "License: GNU General Public License"
' "Copyright: Jonas Cleve"

Import BRL.Blitz
Import BRL.Retro
Import BRL.Stream
Import BRL.FileSystem

Type TResourceManager
   
   Field Name :String[]
   Field Value:String[]
   Field File :String[]
   Field Key  :String[]
   Field Lang :String
   
   Method AddResource(File:String, Key:String="")
      
      Self.File = Self.File[.. Self.File.Length + 1]
      Self.Key  = Self.Key [.. Self.Key .Length + 1]
      Self.File[Self.File.Length - 1] = File
      Self.Key [Self.Key .Length - 1] = Key
      
      Self.Reload()
      
   EndMethod
   
   Method Get:String(Name:String)
      
      Local Entry:Long
      
      For Entry = 0 To Self.Name.Length - 1
         If Name = Self.Name[Entry] Then Return Self.Value[Entry]
      Next
      
      Return ""
      
   EndMethod
   
   Method New()
      
      Self.Name  = New String[0]
      Self.Value = New String[0]
      Self.File  = New String[0]
      Self.Key   = New String[0]
      
   EndMethod
   
   Method Reload()
      
      Local Stream:TStream
      Local File  :Long
      Local Line  :String
      Local Ascii :Short
      Local Name  :String
      
      Self.ResetResources()
      
      For File = 0 To Self.File.Length - 1
         Name = Self.File[File] + "." + Self.Lang + ".res"
         If Self.Key[File].Length > 0 Then
            CryptFile(Name, Name + ".decrypted", Self.Key[File])
            Name = Name + ".decrypted"
         EndIf
         Stream = ReadFile(Name)
         While Not Eof(Stream)
            Line = ReadLine(Stream)
            For Ascii = 0 To 255
               Line = Replace(Line, "\" + Ascii + "\", Chr(Ascii))
            Next
            Self.Name  = Self.Name [.. Self.Name .Length + 1]
            Self.Value = Self.Value[.. Self.Value.Length + 1]
            Self.Name [Self.Name .Length - 1] = Trim(Left(Line, Instr(Line, "=") - 1))
            Self.Value[Self.Value.Length - 1] = Trim(Mid(Line, Instr(Line, "=") + 1))
         Wend
         CloseFile(Stream)
         If Right(Name, 10) = ".decrypted" Then DeleteFile(Name)
      Next
      
   EndMethod
   
   Method ResetAll()
      
      Self.Name  = New String[0]
      Self.Value = New String[0]
      Self.File  = New String[0]
      Self.Key   = New String[0]
      Self.Lang  = ""
      
   EndMethod
   
   Method ResetResources()
      
      Self.Name  = New String[0]
      Self.Value = New String[0]
      
   EndMethod
   
   Method SetLanguage(Language:String)
      
      Self.Lang = Language
      If Self.File.Length > 0 Then Self.Reload()
      
   EndMethod
   
EndType

Function CryptFile(InputFile:String, OutputFile:String, Key:String)
   
   Local Read        :TStream
   Local Write       :TStream
   Local InputString :String
   Local OutputString:String
   Local KeyMid      :Long
   Local Loop        :Long
   
   Read = ReadFile(InputFile)
   While Not Eof(Read)
      InputString = InputString + Chr(ReadByte(Read))
   Wend
   For Loop = 1 To InputString.Length
      KeyMid = (KeyMid + 1) Mod Key.Length
      OutputString = OutputString + Chr(Asc(Mid(InputString, Loop, 1)) ~ (Asc(Mid(Key, KeyMid + 1, 1)) * Loop))
   Next
   CloseFile(Read)
   
   Write = WriteFile(OutputFile)
   For Loop = 1 To OutputString.Length
      WriteByte(Write, Asc(Mid(OutputString, Loop, 1)))
   Next
   CloseFile(Write)
   
EndFunction
