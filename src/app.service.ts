import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  dictionary: string[] = [
    'blue',
    'cow',
    'moon',
    'sucks',
    'hatch',
    'measen',
    'allanson',
    'smith',
    'nealon',
  ];

  getHello(): string {
    // generate a random set of words without duplicates
    const words: Set<string> = new Set();
    while (words.size < 3) {
      const newWord = this.dictionary[
        Math.floor(Math.random() * this.dictionary.length)
      ];
      if (!words.has(newWord)) {
        words.add(newWord);
      }
    }
    // join them together
    return Array.from(words).join(' ');
  }
}
