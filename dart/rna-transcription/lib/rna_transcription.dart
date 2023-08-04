class RnaTranscription {
 String toRna(String dna) {
    final codeMap = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'};
    return dna.split('').map((nucleotide) => codeMap[nucleotide]).join();
}
  }
void main(){
  
    final rnaTranscription = RnaTranscription();
    final result = rnaTranscription.toRna('ACGTGGTCTTAA');
  print(result);
 
}