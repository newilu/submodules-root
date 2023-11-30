import styles from './page.module.css'
import {Button} from '@/modules/test/ui'

export default function Home() {
  return (
    <main className={styles.main}>
      <Button >click me </Button>
    </main>
  )
}
